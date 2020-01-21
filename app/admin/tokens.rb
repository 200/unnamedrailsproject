ActiveAdmin.register Token do
  permit_params :name, :ticker, :hard_cap, :precision, :user_id
  form do |_f|
    inputs do
      input :user, label: "Owner", collection: User.all.map { |u| [u.email, u.id] }
      input :name
      input :ticker
      input :hard_cap
      input :precision
    end
    actions
  end
end
