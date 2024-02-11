package mdpaulinos.backend.mdpaulinosbackend.Product.DTOs;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Data
public class ProductByCategoryDTO {
    private int productId;
    private String productName;
    private double price;

    public ProductByCategoryDTO(int productId, String productName, double price) {
        this.productId = productId;
        this.productName = productName;
        this.price = price;
    }
}

