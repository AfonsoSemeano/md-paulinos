package mdpaulinos.backend.mdpaulinosbackend.Product;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "dimensions")
@Getter
@Setter
public class Dimension {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "dimension_id")
    private Long dimensionId;

    @Column(name = "dimension_values")
    private String dimensionValues;

    @Column(name = "dimension_comment")
    private String dimensionComment;
}
