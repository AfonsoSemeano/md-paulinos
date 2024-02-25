package mdpaulinos.backend.mdpaulinosbackend.Variant;

import jakarta.persistence.*;
import lombok.Data;
import mdpaulinos.backend.mdpaulinosbackend.Product.Dimension;

@Entity
@Table(name = "sizes")
@Data
public class Size {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "size_id", nullable = false)
    private Integer sizeId;

    @Column(name = "size_name", nullable = false)
    private String sizeName;

    @ManyToOne
    @JoinColumn(name = "dimension_id", nullable = true)
    private Dimension dimension;
}