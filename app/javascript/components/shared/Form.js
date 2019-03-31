import React from 'react'
import PropTypes from 'prop-types'

const form = ({action, children, method, token}) => (
  <form action={action} method="post">
    {method === 'patch' && <input name="_method" type="hidden" value="patch" />}
    <input name="authenticity_token" type="hidden" value={token} />
    {children}
  </form>
)

form.propTypes = {
  action: PropTypes.string.isRequired,
  children: PropTypes.array.isRequired,
  method: PropTypes.string.isRequired,
}

export default form
