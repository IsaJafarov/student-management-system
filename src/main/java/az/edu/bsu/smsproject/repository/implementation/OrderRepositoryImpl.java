package az.edu.bsu.smsproject.repository.implementation;

import az.edu.bsu.smsproject.property.FileStorageProperties;
import az.edu.bsu.smsproject.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

@Repository
public class OrderRepositoryImpl implements OrderRepository {

    private final JdbcTemplate jdbcTemplate;
    private final Path fileStorageLocation;

    public OrderRepositoryImpl(JdbcTemplate jdbcTemplate, FileStorageProperties fileStorageProperties) {
        this.jdbcTemplate = jdbcTemplate;
        this.fileStorageLocation = Paths.get(fileStorageProperties.getUploadDirectory()).toAbsolutePath().normalize();
    }


    @Override
    public int addOrder(MultipartFile file) throws FileAlreadyExistsException {
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());

        if (fileName.contains("..")) {
            //err
        }
        Path uploadLocation = null;
        try {
            uploadLocation = fileStorageLocation.resolve(fileName);
            Files.copy(file.getInputStream(), uploadLocation);
        }
        catch (FileAlreadyExistsException e){
            throw new FileAlreadyExistsException("There is a file with the same name");
        }
        catch (IOException e) {
            System.out.println(8888888);
            e.printStackTrace();
        }


        String sql = "INSERT INTO rector_order(id, path) VALUES(nextval('rector_order_sequence'), ?)";
        return jdbcTemplate.update(sql, uploadLocation.toString());
    }

    @Override
    public Resource getOrderById(long id) {
        String sql = "SELECT path FROM rector_order WHERE id = ?";
        String pathStr = jdbcTemplate.query(sql,
                ((resultSet, i) -> resultSet.getString("path")), id).get(0);

        System.out.println(pathStr);
        System.out.println(Paths.get(pathStr));
        System.out.println(Paths.get(pathStr).normalize());
        System.out.println(Paths.get(pathStr).normalize().toUri());

        Path path = Paths.get(pathStr).normalize();
        Resource resource = null;
        try {
            resource = new UrlResource(path.toUri());
            if (resource.exists()) {
                //
            } else {
                //err
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        }

        return resource;
    }

    public Resource getOrderByName(String fileName) {
        Resource resource = null;
        try {
            Path filePath = fileStorageLocation.resolve(fileName).normalize();
            resource = new UrlResource(filePath.toUri());
            if (resource.exists())
                return resource;

        } catch (MalformedURLException e) {
            e.printStackTrace();
        }
        return resource;
    }

    @Override
    public int getNumberOfAllOrders() {
        String sql = "SELECT count(*) FROM rector_order";
        return jdbcTemplate.query(sql, (resultSet, i) -> resultSet.getInt(1)).get(0);
    }

    @Override
    public int getNumberOfFilteredOrders() { //todo do filter
        String sql = "SELECT count(*) FROM rector_order "; //+
//                        "WHERE  " +
        return jdbcTemplate.query(sql,
                ((resultSet, i) -> resultSet.getInt(1))).get(0);
    }

    @Override
    public List<Resource> getFilteredOrdersList(int beginRow, int endRow) {
        String sql =    "SELECT path FROM ( " +
                "SELECT row_number() over (ORDER BY id) AS rownum, path FROM rector_order " +
                ") AS sub " +
                "WHERE rownum BETWEEN ? AND ? ";
        List<String> pathList = jdbcTemplate.query(sql,
                ((resultSet, i) -> resultSet.getString("path")), beginRow, endRow);

        List<Resource> resourceList = new ArrayList<>();

        try {
            for (String path : pathList)
                resourceList.add(new UrlResource(Paths.get(path).normalize().toUri()));

        } catch (MalformedURLException e) { e.printStackTrace(); }

        return resourceList;
    }

}
