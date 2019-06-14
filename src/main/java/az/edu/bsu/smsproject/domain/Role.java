package az.edu.bsu.smsproject.domain;

import az.edu.bsu.smsproject.domain.Enums.Status;

import java.io.Serializable;

public class Role extends BaseDomain implements Serializable {
    private static final long serialVersionUID = -3201383828144212802L;


    private String defaultController;
    private String defaultPage;

    public Role(long id, String name, Status status, String defaultController, String defaultPage) {
        super(id, name, status);
        this.defaultController = defaultController;
        this.defaultPage = defaultPage;
    }

    public Role() {
    }

    @Override
    public String toString() {
        return "Role{" +
                "status='" + status + '\'' +
                ", defaultController='" + defaultController + '\'' +
                ", defaultPage='" + defaultPage + '\'' +
                ", id=" + id +
                ", name='" + name + '\'' +
                '}';
    }

    //TODO make sure there is no need to override equals, hashCode and compareTo methods

    public String getDefaultController() {
        return defaultController;
    }

    public void setDefaultController(String defaultController) {
        this.defaultController = defaultController;
    }

    public String getDefaultPage() {
        return defaultPage;
    }

    public void setDefaultPage(String defaultPage) {
        this.defaultPage = defaultPage;
    }
}
