package az.edu.bsu.smsproject.repository;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.FileAlreadyExistsException;
import java.util.List;

public interface OrderRepository {

    int addOrder(MultipartFile file) throws FileAlreadyExistsException;
    Resource getOrderById(long id);
    Resource getOrderByName(String fileName);
    int getNumberOfAllOrders();
    List<Resource> getFilteredOrdersList(int beginRow, int endRow);
    int getNumberOfFilteredOrders();

}
