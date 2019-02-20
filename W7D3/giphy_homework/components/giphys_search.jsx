import React from 'react';

import GiphysIndex from './giphys_index';

export default class GiphysSearch extends React.Component {
  constructor(props){
    super(props);
    this.state ={
      searchTerm: "golden retriever"
    }
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount() {
    // this.props.fetchSearchGiphys('golden+retriever');
  }
  
  handleChange(e) {
    e.preventDefault();
    this.setState({ searchTerm: e.target.value })
  }

  handleSubmit(e) {
    e.preventDefault();
    let searchTerm = this.state.searchTerm.split(" ").join("+");
    this.props.fetchSearchGiphys(searchTerm);
  }

  render() {
    return(
      <form className="search-bar">
        <input type="text" onChange={this.handleChange} value={this.state.searchTerm} />
        <button onClick={this.handleSubmit}>Search</button>
      </form>
    )
  }
}

