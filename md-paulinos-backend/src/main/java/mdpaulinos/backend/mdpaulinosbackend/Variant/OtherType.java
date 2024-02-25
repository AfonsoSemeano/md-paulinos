package mdpaulinos.backend.mdpaulinosbackend.Variant;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "other_types")
@Data
public class OtherType {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "other_id", nullable = false)
    private Integer otherId;

    @Column(name = "other_name", nullable = false)
    private String otherName;
}
