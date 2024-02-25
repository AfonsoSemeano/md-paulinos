package mdpaulinos.backend.mdpaulinosbackend.Variant;

import jakarta.persistence.*;
import lombok.Data;
import mdpaulinos.backend.mdpaulinosbackend.Product.Product;

import java.math.BigDecimal;

@Entity
@Table(name = "variants")
@Data
public class Variant {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "variant_version_id", nullable = false)
    private Long variantVersionId;

    @Column(name = "variant_id", nullable = false)
    private Integer variantId;

    @Column(name = "previous_variant_id", nullable = true)
    private Long previousVariantId;

    @ManyToOne
    @JoinColumn(name = "product_id", nullable = false)
    private Product product;

    @Column(name = "variant_name", nullable = true)
    private String variantName;

    @ManyToOne
    @JoinColumn(name = "color_id", nullable = true)
    private Color color;

    @ManyToOne
    @JoinColumn(name = "material_id", nullable = true)
    private Material material;

    @ManyToOne
    @JoinColumn(name = "size_id", nullable = true)
    private Size size;

    @ManyToOne
    @JoinColumn(name = "other_id", nullable = true)
    private OtherType otherType;

    @Column(name = "price_override", nullable = true)
    private BigDecimal priceOverride;

    @Column(name = "is_available", nullable = false)
    private Boolean isAvailable;

    @Column(name = "quantity", nullable = false)
    private Integer quantity;

    @Column(name = "is_default", nullable = false)
    private Boolean isDefault;

    @Column(name = "is_newest", nullable = false)
    private Boolean isNewest;

    @Column(name = "is_deleted", nullable = false)
    private Boolean isDeleted;
}
