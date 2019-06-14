package az.edu.bsu.smsproject.domain;

import az.edu.bsu.smsproject.domain.Enums.Status;
import java.io.Serializable;

public class SocialStatus extends BaseDomain implements Serializable {
    private static final long serialVersionUID = -6236874753965632082L;

    private boolean selected;

    public SocialStatus(long id, String name, Status status) {
        super(id, name, status);
        selected = false;
    }

    public SocialStatus() {
        selected = false;
    }

    public boolean isSelected() {
        return selected;
    }

    public void setSelected(boolean selected) {
        this.selected = selected;
    }

    @Override
    public String toString() {
        return "SocialStatus{" +
                "selected=" + selected +
                ", id=" + id +
                ", name='" + name + '\'' +
                ", status=" + status +
                '}';
    }
}
