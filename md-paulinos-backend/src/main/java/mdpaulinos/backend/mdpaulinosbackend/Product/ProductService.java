package mdpaulinos.backend.mdpaulinosbackend.Product;

import mdpaulinos.backend.mdpaulinosbackend.Product.DTOs.ProductByCategoryDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    public Iterable<Product> getAllProducts() {
        return productRepository.findAll();
    }

    public Iterable<ProductByCategoryDTO> getProductsByCategory(Long categoryId) {
        return productRepository.findByCategory(categoryId);
    }
}
