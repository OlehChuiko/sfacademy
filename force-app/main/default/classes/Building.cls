public abstract class Building {
    private String address;
    private Integer monthlyIncome;

    public Integer getMonthlyIncome(){
        return this.monthlyIncome;
    }
    public Building() {}
    public Building(String address, Integer income){
        this.address = address;
        this.monthlyIncome = income;
    }

}