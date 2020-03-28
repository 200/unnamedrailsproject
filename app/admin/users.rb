ActiveAdmin.register User do
  permit_params :email
  form do |f|
    f.inputs do
      f.input :email, uniqueness: { case_sensitive: false }, format: { with: Devise.email_regexp }
    end
    f.actions
  end

  after_create(&:send_reset_password_instructions)

  def password_required?
    new_record? ? false : super
  end
end
