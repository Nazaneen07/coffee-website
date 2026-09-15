# Coffee Website

## Introduction
This is a full-stack web application built with Ruby on Rails that manages a coffee retail business's inventory. It tracks coffee bean suppliers and the individual bean products they provide, allowing a business to keep supplier contact information and product details organized in one place.

## Repository Structure
```
coffee-website-main/
├── app/
│   ├── controllers/
│   │   ├── beans_controller.rb
│   │   └── suppliers_controller.rb
│   ├── models/
│   │   ├── bean.rb
│   │   └── supplier.rb
│   ├── views/
│   │   ├── beans/
│   │   └── suppliers/
│   ├── helpers/
│   ├── javascript/
│   └── assets/
│       └── stylesheets/
├── config/
│   ├── routes.rb
│   └── database.yml
├── db/
│   ├── migrate/
│   ├── schema.rb
│   └── seeds.rb
├── Gemfile
└── README.md
```

## File Descriptions

### Models
| File | Description |
|---|---|
| `supplier.rb` | Represents a coffee bean supplier. Has many beans (destroyed along with the supplier). |
| `bean.rb` | Represents a coffee bean product. Belongs to a supplier. |

### Controllers
| File | Description |
|---|---|
| `suppliers_controller.rb` | Handles full CRUD for suppliers (index, show, new, create, edit, update, destroy). |
| `beans_controller.rb` | Handles full CRUD for beans (index, show, new, create, edit, update, destroy). |

### Database
| Table | Fields |
|---|---|
| `suppliers` | name, address, city, state, email, phone |
| `beans` | product_name, bean_type, price, quantity, description, supplier_id (foreign key) |

## Routes
| Route | Method | Description |
|---|---|---|
| `/suppliers` | GET | Lists all suppliers |
| `/suppliers/new` | GET | Form to add a new supplier |
| `/suppliers` | POST | Creates a new supplier |
| `/suppliers/:id` | GET | Shows a single supplier |
| `/suppliers/:id/edit` | GET | Form to edit a supplier |
| `/suppliers/:id` | PATCH/PUT | Updates a supplier |
| `/suppliers/:id` | DELETE | Deletes a supplier (and its beans) |
| `/beans` | GET | Lists all beans |
| `/beans/new` | GET | Form to add a new bean |
| `/beans` | POST | Creates a new bean |
| `/beans/:id` | GET | Shows a single bean |
| `/beans/:id/edit` | GET | Form to edit a bean |
| `/beans/:id` | PATCH/PUT | Updates a bean |
| `/beans/:id` | DELETE | Deletes a bean |

## Setup and Installation
**Requirements:** Ruby 3.4.7, Rails ~8.1.3, SQLite3

```
bundle install
bin/rails db:create db:migrate
bin/rails server
```

The app will be available at `http://127.0.0.1:3000`.
