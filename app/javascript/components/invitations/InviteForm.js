import React from "react";
import Form from "../shared/Form";
import Input from "../shared/FormInput";

const InviteForm = ({ form }) => {
  return (
    <div className="card listing-card">
      <div className="card-header">Send A Sign Up Link</div>
      <div className="card-body">
        <Form {...form}>
          <Input
            helpText="This is the email of the person you would like to invite"
            name="referral_code[email]"
            placeholder="Enter email"
          />
          <button type="submit" className="btn btn-primary">
            Invite
          </button>
        </Form>
      </div>
    </div>
  );
};

export default InviteForm;
