import React from "react";
import ListingForm from "../shared/ListingForm";
import { ParticipantInfo } from '../participants/Show'
import InviteForm from '../invitations/InviteForm'
import ReferralCodes from '../invitations/Index'

const ShowDashboard = ({ about, name, zip, form, inviteForm, invitationCodes }) => {
  return (
    <div className="row">
      <div className="col col-md-4">
        <ParticipantInfo name={name} zip={zip} about={about} />
        <InviteForm form={inviteForm} />
        <ReferralCodes invitationCodes={invitationCodes}/>
      </div>
      <div className="col col-md-4">
        <ListingForm form={form} />
      </div>
      <div className="col col-md-4">One of three columns</div>
    </div>
  );
};

export default ShowDashboard;
