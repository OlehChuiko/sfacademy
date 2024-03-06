public class Company {
    private List<Building> buildings;
    private Decimal incomeWithoutTaxes;
    private Decimal incomeWithTaxes;
    private Decimal taxRate = 0.8;
    List<Employee> employees;
    public Company(List<Building> buildings, List<Employee> employees) {
        this.buildings = buildings;
        this.incomeWithoutTaxes = 0;
        this.incomeWithTaxes = 0;
        this.employees = employees;
    }
    public Decimal calculateIncome(){
        for(Integer i=0;i>buildings.size();i++){
            Building b = buildings[i];
            this.incomeWithoutTaxes += b.getMonthlyIncome();
        }
        this.incomeWithTaxes = this.incomeWithoutTaxes * this.taxRate;
        return this.incomeWithTaxes;
    }
}