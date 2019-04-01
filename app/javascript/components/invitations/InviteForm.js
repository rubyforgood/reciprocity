import React from 'react'
import Form from '../shared/Form'
import Input from '../shared/FormInput'

const InviteForm = ({form}) => {
  return(
    <div className="row">
      <div className="col-6">
        <Form {...form}>
          <Input
            helpText="This is the email of the person you would like to invite"
            label="Email"
            name="referral_code[email]"
            placeholder="Enter email"
          />
          <button type="submit" className="btn btn-primary">Invite</button>
        </Form>
      </div>
    </div>
  )
}

export default InviteForm