import React from "react";
import ListingForm from "../shared/ListingForm";
import { ParticipantData } from "../participants/Show";
import ListingsGrid from "../shared/ListingsGrid";
import InviteForm from '../invitations/InviteForm'
import CreateCodesForm from '../invitations/CreateCodesForm'
import ReferralCodes from '../invitations/Index'

const ShowDashboard = ({ form, listings, inviteForm, invitationCodes, createCodesForm,  ...props }) => {
  return (
    <div className="row">
      <div className="col col-md-4">
        <ParticipantData {...props} />
        <InviteForm form={inviteForm} />
        <CreateCodesForm form={createCodesForm} />
        <ReferralCodes invitationCodes={invitationCodes}/>
      </div>
      <div className="col col-md-4">
        <ListingForm form={form} />
      </div>
      <div className="col col-md-4">
        <ListingsGrid listings={listings} />
      </div>
    </div>
  );
};

export default ShowDashboard;
