package mdpaulinos.backend.mdpaulinosbackend.Product;

import mdpaulinos.backend.mdpaulinosbackend.Product.DTOs.ProductByCategoryDTO;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductRepository extends CrudRepository<Product, Long> {

    @Query(value = "SELECT NEW mdpaulinos.backend.mdpaulinosbackend.Product.DTOs.ProductByCategoryDTO(p.product_id, p.product_name, pma.base_price + COALESCE(pco.extra_cost, 0) + COALESCE(pme.extra_cost, 0)) " +
            "FROM products p " +
            "JOIN product_categories pca ON p.product_id = pca.product_id " +
            "JOIN product_materials pma ON pma.product_version_id = p.product_version_id " +
            "LEFT JOIN product_colors pco ON pco.product_version_id = p.product_version_id AND pco.is_default = true " +
            "LEFT JOIN product_measurements pme ON pme.product_version_id = p.product_version_id AND pme.is_default = true " +
            "WHERE pma.is_default = true and pca.category_id = :categoryId", nativeQuery = true)
    List<ProductByCategoryDTO> findByCategory(@Param("categoryId") Long categoryId);


}
