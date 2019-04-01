import React from 'react'

const InvitationCode = ({
  code,
  used
}) => (
  <tr>
    <td>{ code }</td>
    <td>{ used ? 'YES' : 'NO' }</td>
  </tr>
)

const Index = ({ invitationCodes }) => {
  return (
    <div className="row">
      <div className="col-6">
      <h3>Your Access Codes</h3>
      <table class="table">
        <thead>
          <tr>
            <th scope="col"></th>
            <th scope="col">Used?</th>
          </tr>
        </thead>
        <tbody>
          { invitationCodes.map(code => (
            <InvitationCode { ...code } />
          ))}
        </tbody>
      </table>
      </div>
    </div>
)}

export default Index