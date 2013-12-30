/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.blog.entidades;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;
import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 *
 * @author Hugo
 */
@Entity
@Table(name = "usuario", catalog = "blog_db", schema = "", uniqueConstraints = {
    @UniqueConstraint(columnNames = {"usuario"})})
public class Usuario implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
//    @GenericGenerator(name = "generadorIdUsuario", strategy = "org.hibernate.id.TableHiLoGenerator" 
//            , parameters = {
//            @Parameter(value = "hibernate_id_generation", name = "usuario"),
//            @Parameter(value = "0", name = "max_lo")} )
//    @GenericGenerator(
//        name="hibseq_usuario",
//        strategy = "seqhilo",
//        parameters = {
//            @Parameter(name="max_lo", value = "0"),
//            @Parameter(name="sequence", value="sequenceUsuario")
//        }
//     )
//    @GeneratedValue(generator = "hibseq_usuario")
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Basic(optional = false)
    @Column(name = "id", nullable = false)
    private Integer id;
    @Basic(optional = false)
    @Column(name = "nombre", nullable = false, length = 250)
    private String nombre;
    @Basic(optional = false)
    @Column(name = "correo", nullable = false, length = 250)
    private String correo;
    @Basic(optional = false)
    @Column(name = "usuario", nullable = false, length = 30)
    private String usuario;
    @Basic(optional = false)
    @Column(name = "password", nullable = false, length = 250)
    private String password;
    @Column(name = "fecha_nacimiento")
    @Temporal(TemporalType.DATE)
    private Date fechaNacimiento;
    @JoinColumn(name = "rol_id", referencedColumnName = "rol_id", nullable = false)
    @ManyToOne(optional = false)
    private Rol rolId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "usuarioId")
    private List<Entrada> entradaList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "usuarioId")
    private List<Comentario> comentarioList;

    public Usuario() {
    }

    public Usuario(Integer id) {
        this.id = id;
    }

    public Usuario(Integer id, String nombre, String correo, String usuario, String password) {
        this.id = id;
        this.nombre = nombre;
        this.correo = correo;
        this.usuario = usuario;
        this.password = password;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public Rol getRolId() {
        return rolId;
    }

    public void setRolId(Rol rolId) {
        this.rolId = rolId;
    }

    public List<Entrada> getEntradaList() {
        return entradaList;
    }

    public void setEntradaList(List<Entrada> entradaList) {
        this.entradaList = entradaList;
    }

    public List<Comentario> getComentarioList() {
        return comentarioList;
    }

    public void setComentarioList(List<Comentario> comentarioList) {
        this.comentarioList = comentarioList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Usuario)) {
            return false;
        }
        Usuario other = (Usuario) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.blog.entidades.Usuario[ id=" + id + " ]";
    }
    
}
