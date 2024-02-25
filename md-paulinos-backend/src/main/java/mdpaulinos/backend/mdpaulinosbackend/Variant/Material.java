package mdpaulinos.backend.mdpaulinosbackend.Variant;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "materials")
@Data
public class Material {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "material_id", nullable = false)
    private Integer materialId;

    @Column(name = "material_name", nullable = false)
    private String materialName;

    @Column(name = "material_image_url", nullable = false)
    private String materialImageUrl;
}