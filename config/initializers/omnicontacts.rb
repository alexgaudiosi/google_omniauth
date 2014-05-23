require "omnicontacts"

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, "527565189411.apps.googleusercontent.com", "0l1S3sD2bkpbiLnE581lyWou", {:redirect_path => "/contacts/gmail/contact_callback"}
end

