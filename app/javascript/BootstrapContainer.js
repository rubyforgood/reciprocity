import React from 'react'

const bootstrapContainer = ({children}) => (
  <div className="container">
    <div className="row">
      <div className="col">
        {children}
      </div>
    </div>
  </div>
)

export default bootstrapContainer
