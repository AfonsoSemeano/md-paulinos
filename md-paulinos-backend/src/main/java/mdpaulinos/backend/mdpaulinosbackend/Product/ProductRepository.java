package mdpaulinos.backend.mdpaulinosbackend.Product;

import mdpaulinos.backend.mdpaulinosbackend.Product.DTOs.ProductByCategoryDTO;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface ProductRepository extends CrudRepository<Product, Long> {

    List<Product> findByCategoriesCategoryId(@Param("categoryId") Long categoryId);

}
