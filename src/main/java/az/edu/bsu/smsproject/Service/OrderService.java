package az.edu.bsu.smsproject.Service;

import org.springframework.core.io.Resource;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.FileAlreadyExistsException;
import java.util.List;

public interface OrderService {

    int addOrder(MultipartFile file) throws FileAlreadyExistsException;
    Resource getOrderByName(String fileName);
    Resource getOrderById(long id);
    int getNumberOfAllOrders();
    List<Resource> getFilteredOrdersList(int beginRow, int endRow);
    int getNumberOfFilteredOrders();

}
