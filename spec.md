# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) - Artist has_many :pieces
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) - Piece belongs_to :artist
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) - Artist has_many :museums, through: :pieces, Museum has_many :artists, through: :pieces
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) - Artist - Museum
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) - Piece has :name, :year_created, :image(url), :image_description
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) - Artist Validates on create/update
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) - Museum - scope :open_status, -> { where(open_status: true) }
- [x] Include signup
- [x] Include login
- [x] Include logout
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) - Github
- [x] Include nested resource show or index (URL e.g. users/2/recipes) - artists/:id/pieces
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) - museums/:id/pieces/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate