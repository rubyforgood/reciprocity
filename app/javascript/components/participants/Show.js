import React from 'react'
import BootstrapContainer from 'BootstrapContainer'

const ShowParticipant = ({
  about,
  name,
  zip,
}) => {
  return(
    <BootstrapContainer>
      <h1>Welcome, {name}!</h1>
      <p>You live in {zip}</p>
      <p>Here's a bit about you!</p>
      <p>{about}</p>
      <a href="profile/edit">Edit profile</a>
    </BootstrapContainer>
  )
}

export default ShowParticipant
