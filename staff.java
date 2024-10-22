package ajp;

public class staff {
    private int id;
    private String name;
    private String role;
    private String department;
    private String email;
    private String phoneNumber;
    private String startdate;
    private String enddate;
    private String hourrate;

    public staff(int id, String name, String role, String department, String email, String phoneNumber,
            String startdate, String enddate, String hourrate) {
        this.id = id;
        this.name = name;
        this.role = role;
        this.department = department;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.startdate = startdate;
        this.enddate = enddate;
        this.hourrate=hourrate;
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

    public String getrole() {
        return role;
    }

    public void setrole(String role) {
        this.role = role;
    }

    public String getdepartment() {
        return department;
    }

    public void setdepartment(String department) {
        this.department = department;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getstartdate() {
        return startdate;
    }

    public void setstartdate(String startdate) {
        this.startdate = startdate;
    }

    public String getenddate() {
        return enddate;
    }

    public void setenddate(String enddate) {
        this.enddate = enddate;
    }
public String gethourrate(){
    return hourrate;
}
public void sethourrate(String hourrate){
    this.hourrate=hourrate;
}
}

