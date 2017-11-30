import React from 'react'
import ReactDOM from 'react-dom'

class RootPage extends React.Component {
  render() {
    return (
      <div class="root_page">
        <h1 class="page_title"> Home </h1>
      </div>
    );
  }
}

ReactDOM.render(
  <RootPage/>

);
