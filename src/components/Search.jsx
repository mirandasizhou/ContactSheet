import React from 'react';

class Search extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      term: ''
    }
    this.handleChange = this.handleChange.bind(this);
    this.handleSearch = this.handleSearch.bind(this);
  }

  handleChange(e) {
    e.preventDefault();
    this.setState({
      term: e.target.value
    })
  }

  handleSearch() {
    // var term = this.state.term;
    // this.props.onSearch(term);
    console.log(this.state.term);
  }

  render () {
    return (
    <form >
      Search <input value={this.state.term} onChange={this.handleChange}/>
      <button type="submit" onClick={this.handleSearch}>Submit</button>
    </form>
    )
  }
}
export default Search