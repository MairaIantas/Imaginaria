ActiveAdmin.register Product do
  permit_params :name, :description, :quantity, :price
end
