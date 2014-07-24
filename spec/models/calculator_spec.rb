require 'rails_helper'

describe Calculator do

  it "gives 5 for add 5 input" do
    calculator = Calculator.create({:state => 0})
    expect(calculator.+(5)).to eq(5)
  end

  it "gives 4 for multiply 2 input" do
    calculator = Calculator.create({:state => 2})
    expect(calculator.*(2)).to eq(4)
  end

  it "gives -2 for subtract 2 input" do
    calculator = Calculator.create({:state => 0})
    expect(calculator.-(2)).to eq(-2)
  end

  it "gives 4 for divide 5 input" do
    calculator = Calculator.create({:state => 20})
    expect(calculator./(5)).to eq(4)
  end

  context "checking for save" do
    it "should save state of calculator to 5 for add 5" do
      calculator = Calculator.create({:state => 0})
      calculator.+(5)
      expect(calculator.reload.state).to eq(5)
    end

    it "should save state of calculator to 4 for multiply 2" do
      calculator = Calculator.create({:state => 2})
      calculator.*(2)
      expect(calculator.reload.state).to eq(4)
    end

    it "should save state of calculator to -2 for sub 2" do
      calculator = Calculator.create({:state => 0})
      calculator.-(2)
      expect(calculator.reload.state).to eq(-2)
    end

    it "should save state of calculator to 4 for divide 5" do
      calculator = Calculator.create({:state => 20})
      calculator./(5)
      expect(calculator.reload.state).to eq(4)
    end

  end

end
