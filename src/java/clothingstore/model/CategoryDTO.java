/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clothingstore.model;

/**
 *
 * @author HuuThanh
 */
public class CategoryDTO {
    private int id;
    private String name;
    private TypeDTO type;

    public CategoryDTO() {
    }

    public CategoryDTO(int id, String name, TypeDTO type) {
        this.id = id;
        this.name = name;
        this.type = type;
    }

    public TypeDTO getType() {
        return type;
    }

    public void setTypeId(TypeDTO type) {
        this.type = type;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    
    
}
