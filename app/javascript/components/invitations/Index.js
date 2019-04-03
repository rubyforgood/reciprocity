import React from "react";

const InvitationCode = ({ code, used }) => (
  <tr>
    <td>{code}</td>
    <td>{used ? "YES" : "NO"}</td>
  </tr>
);

const Index = ({ invitationCodes }) => {
  return (
    <div className="row">
      <div className="col-6">
        <h5>Your Invites</h5>
        {invitationCodes.length > 0 && (
          <table className="table">
            <thead>
              <tr>
                <th scope="col" />
                <th scope="col">Used?</th>
              </tr>
            </thead>
            <tbody>
              {invitationCodes.map(code => (
                <InvitationCode {...code} />
              ))}
            </tbody>
          </table>
        )}
        {!invitationCodes.length && <p>You have no invitation codes.</p>}
      </div>
    </div>
  );
};

export default Index;
