import React from 'react';
import ReactDOM from 'react-dom';
import axios from 'axios';
import Add from './components/Add.jsx';
import ContactList from './components/ContactList.jsx';
import Search from './components/Search.jsx';
import Filter from './components/Filter.jsx';

class App extends React.Component {
  constructor() {
    super();
    this.state = {
      contacts: [],
      load: false,
      term: ''
    }
    this.getContacts = this.getContacts.bind(this);
    this.loadAdd = this.loadAdd.bind(this);
    this.search = this.search.bind(this);
    this.handleSearch = this.handleSearch.bind(this);
    this.reset = this.reset.bind(this);
    this.loadFilter = this.loadFilter.bind(this);
  }

  componentDidMount() {
    this.getContacts();
  }

  getContacts() {
    axios.get('/api/contact')
      .then((results) => {
        this.setState({
          contacts: results.data
        })
      })
      .catch((err) => {
        console.log(err);
      })
  }

  handleSearch(e) {
    e.preventDefault();
    this.setState({
      term: e.target.value
    })
  }

  loadFilter(list) {
    this.setState({
      contacts: list
    });
  }

  search() {
    var term = this.state.term;
    var list = this.state.contacts;
    var searched = [];
    list.forEach((contact, i) => {
      for (i in contact) {
        if (contact[i] && contact[i].toLowerCase().includes(term)) {
          searched.push(contact);
          break;
        }
      }
    });
    this.setState({
      contacts: searched,
      term: ''
    })
    console.log(this.state);
  }

  reset() {
    window.location.reload();
  }

  loadAdd() {
    if (this.state.load) {
      this.setState({
        load: false
      })
    } else {
      this.setState({
        load: true
      })
    }
  }

  render () {
    return (
      <>
        <h1>BenefitMall Contact List</h1>
        <div>
          <Filter contacts={this.state.contacts} loadFilter={this.loadFilter} resetFilter={this.getContacts}/>
          Search: <input value={this.state.term} onChange={this.handleSearch} />
          <button onClick={this.search}>Submit</button>
          <button onClick={this.reset}>Reset</button>
        </div>
        <button id="new" onClick={this.loadAdd}>Add a New Contact</button>
        <Add getContacts={this.getContacts} load={this.state.load}/>
        <ContactList props={this.state.contacts} />
      </>
    )
  }
}

ReactDOM.render(<App />, document.getElementById('app'));