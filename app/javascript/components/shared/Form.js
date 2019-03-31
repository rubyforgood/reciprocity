import React from 'react'
import PropTypes from 'prop-types'

const form = ({action, children, className, method, redirect, token}) => (
  <form action={action} className={className} method="post">
    {method === 'patch' && <input name="_method" type="hidden" value="patch" />}
    <input name="redirect_path" type="hidden" value={redirect} />
    <input name="authenticity_token" type="hidden" value={token} />
    {children}
  </form>
)

form.propTypes = {
  action: PropTypes.string.isRequired,
  children: PropTypes.array.isRequired,
  className: PropTypes.string,
  method: PropTypes.string.isRequired,
  redirect: PropTypes.string,
}

export default form
