ActiveAdmin.register Product do
  permit_params :name, :description, :qty, :price, :image, :category_id
end
