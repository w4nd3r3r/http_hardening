# Class: http_hardening::params
#
# This class manages Apache parameters
#
# Parameters:
# - The $apache2 represents option to enable and manage
#   secure headers on Debian like distros
#
# - The $httpd represents option to enable and manage
#   secure headers on RedHat like distros
#
# - The $nginx represents option to enable and manage
#   secure headers on nginx
#
# - The $lighttpd represents option to enable and manage
#   secure headers on lighttpd
#
# - The $x_frame_options tells the browser whether you
#   want to allow your site to be framed or not.
#   By preventing a browser from framing your site you
#   can defend against attacks like clickjacking.
#
# - The $x_content_type_options stops a browser from
#   trying to MIME-sniff the content type and forces it
#   to stick with the declared content-type. This helps
#   to reduce the danger of drive-by downloads.
#   The only valid value for this header is "nosniff".
#
# - The $content_security_policy is an effective measure
#   to protect your site from XSS attacks. By whitelisting
#   sources of approved content, you can prevent the browser
#   from loading malicious assets.
#
# - The $x_xss_protection sets the configuration for
#   the cross-site scripting filters built into most browsers.
#   The best configuration is "X-XSS-Pvaliate_arrayrotection: 1; mode=block".
#
# - The $public_key_pins extension for HTTP (HPKP) is a security
#   header that tells a web client to associate a specific
#   cryptographic public key with a certain web server to prevent
#   MITM attacks with forged certificates.
#
# - The $strict_transport_security (HSTS) enforces secure
#   (HTTP over SSL/TLS) connections to the server.
#   This reduces impact of bugs in web applications leaking
#   session data through cookies and external links and defends
#   against Man-in-the-middle attacks. HSTS also disables the
#   ability for user's to ignore SSL negotiation warnings.
#
# - The $conf_headers_file represents the default file
#   of custom secure http headers
#
# - The $conf_custom_headers_file represents the default file
#   of custom secure http headers
#
#
class http_hardening::params {
  $apache2                             = false
  $httpd                               = false
  $nginx                               = false
  $lighttpd                            = false
  $x_frame_options                     = 'DENY'
  $x_content_type_options              = 'nosniff'
  $x_xss_protection                    = '1; mode=block'
  $x_robots_tag                        = ''
  $public_key_pins                     = ''
  $strict_transport_security           = ''
  $content_security_policy             = ''
  $content_security_policy_report_only = ''
  $x_content_security_policy           = ''
  $x_webkit_csp                        = ''
  $conf_headers_file                   = 'headers.conf'
  $conf_custom_headers_file            = "custom-${conf_headers_file}"
}
