package mdpaulinos.backend.mdpaulinosbackend;

import jakarta.annotation.Nullable;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.sql.Timestamp;

@Entity
@Table(name = "products")
@Getter
@Setter
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_version_id")
    private Long productVersionId;

    @Column(name = "product_id")
    private int productId;

    @Column(name = "product_name")
    private String productName;

    @Column(name = "creation_date")
    private Timestamp creationDate;

    @Nullable
    @Column(name = "previous_product_version_id")
    private Long previousVersionId;
}
