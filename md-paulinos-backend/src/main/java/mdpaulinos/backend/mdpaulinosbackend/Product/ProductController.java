package mdpaulinos.backend.mdpaulinosbackend.Product;

import mdpaulinos.backend.mdpaulinosbackend.Product.DTOs.ProductByCategoryDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/products")
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping
    public Iterable<Product> getAllProducts() {
        return productService.getAllProducts();
    }

    @GetMapping("/categories")
    public Iterable<ProductByCategoryDTO> getAllProductsByCategory(@RequestParam("category") Long categoryId) {
        return productService.getProductsByCategory(categoryId);
    }
}
