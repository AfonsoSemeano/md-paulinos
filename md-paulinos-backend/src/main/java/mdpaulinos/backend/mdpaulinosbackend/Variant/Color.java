package mdpaulinos.backend.mdpaulinosbackend.Variant;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "colors")
@Data
public class Color {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "color_id", nullable = false)
    private Integer colorId;

    @Column(name = "color_name", nullable = false)
    private String colorName;

    @Column(name = "color_rgbA", nullable = false)
    private String colorRgbA;
}
