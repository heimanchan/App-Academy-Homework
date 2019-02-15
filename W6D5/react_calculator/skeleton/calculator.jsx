import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    //your code here
    this.state = { result: 0, num1: "", num2: "" };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
  }

  //your code here
  setNum1(e) {
    e.preventDefault();
    this.setState({ num1: parseInt(e.target.value)});
  }

  setNum2(e) {
    e.preventDefault();
    this.setState({ num2: parseInt(e.target.value)});
  }

  add(e) {
    e.preventDefault();
    this.setState({ result: this.state.num1 + this.state.num2 });
  }

  render(){
    const { result, num1, num2 } = this.state;
    return (
      <div>
        <h1>{result}</h1>
        <input type="text" value={num1} onChange={this.setNum1}/>
        <input type="text" value={num2} onChange={this.setNum2}/>
        <button onClick={this.add}>+</button>
      </div>
    );
  }
}

export default Calculator;
