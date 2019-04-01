import React from 'react'
import Form from '../shared/Form'
import Input from '../shared/FormInput'

const GetCodesForm = ({form}) => {
  return(
    <div className="row">
      <div className="col-6">
        <div class="card listing-card">
          <div class="card-header">Get Invite Codes</div>
          <div class="card-body">
            
            <Form {...form}>
              <Input
                helpText="Quantity"
                name="referral_code[quantity]"
                placeholder="Enter number"
                type="number"
              />
              <Input
                name="referral_code[code]"
                placeholder="Enter Code"
                helpText="Enter a unique code"
              />
              <button type="submit" className="btn btn-primary">Get Codes</button>
            </Form>
          </div>
        </div>
      </div>
    </div>
  )
}

export default GetCodesForm