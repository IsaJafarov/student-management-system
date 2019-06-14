package az.edu.bsu.smsproject.Service.implementation;

import az.edu.bsu.smsproject.Service.OrderService;
import az.edu.bsu.smsproject.repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.nio.file.FileAlreadyExistsException;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {
    private final OrderRepository orderRepository;

    public OrderServiceImpl(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    @Override
    public int addOrder(MultipartFile file) throws FileAlreadyExistsException {
        return orderRepository.addOrder(file);
    }

    @Override
    public Resource getOrderByName(String fileName) {
        return orderRepository.getOrderByName(fileName);
    }

    @Override
    public Resource getOrderById(long id) {
        return orderRepository.getOrderById(id);
    }

    @Override
    public int getNumberOfAllOrders() {
        return orderRepository.getNumberOfAllOrders();
    }

    @Override
    public List<Resource> getFilteredOrdersList(int beginRow, int endRow) {
        return orderRepository.getFilteredOrdersList(beginRow, endRow);
    }

    @Override
    public int getNumberOfFilteredOrders() {
        return orderRepository.getNumberOfFilteredOrders();
    }
    
}
