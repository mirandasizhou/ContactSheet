import React from 'react';
import axios from 'axios';


class Add extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      market: '',
      product: '',
      region: '',
      territory: '',
      carrier: '',
      fullname: '',
      title: '',
      email: '',
      phone: '',
      phone_2: '',
      notes: ''
    }
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);

  }

  handleChange(e) {
    e.preventDefault();
    var value = e.target.value;
    var name = e.target.name;
    this.setState({
      [name]: value
    })
  }

  handleSubmit() {
    let contact = {
      market: this.state.market,
      product: this.state.product,
      region: this.state.region,
      territory: this.state.territory,
      carrier: this.state.carrier,
      fullname: this.state.fullname,
      title: this.state.title,
      email: this.state.email,
      phone: this.state.phone,
      phone_2: this.state.phone_2,
      notes: this.state.notes
    }
    axios.post('/api/contact', contact)
      .then(() => {
        this.props.getContacts();
      })
      .catch((err) => {
        console.error(err);
      })
  }

  render () {
    if (this.props.load) {
    return (
      <div>
        <form onSubmit={this.handleSubmit}>
        Market: <input value={this.state.market} onChange={this.handleChange} name="market" required="required"/>
        Product: <input value={this.state.product} onChange={this.handleChange} name="product" required="required"/>
        Region: <input value={this.state.region} onChange={this.handleChange} name="region" required="required"/>
        Territory: <input value={this.state.territory} onChange={this.handleChange} name="territory" required="required"/>
        Carrier: <input value={this.state.carrier} onChange={this.handleChange} name="carrier" required="required"/>
        Full Name: <input value={this.state.fullname} onChange={this.handleChange} name="fullname" required="required"/>
        Title: <input value={this.state.title} onChange={this.handleChange} name="title"/>
        Email: <input value={this.state.email} onChange={this.handleChange} name="email" required="required"/>
        Phone Number: <input value={this.state.phone} onChange={this.handleChange} name="phone"/>
        Phone Number 2: <input value={this.state.phone_2} onChange={this.handleChange} name="phone_2"/>
        Notes: <input value={this.state.notes} onChange={this.handleChange} name="notes"/>
        <button type="submit">Submit</button>
        </form>
      </div>
    )
    } else {
      return (
        <>
        </>
      )
    }
  }
}

export default Add