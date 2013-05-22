# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130522011401) do

  create_table "carriers", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "postal_code"
    t.integer  "contact_id"
    t.boolean  "active"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "state"
  end

  create_table "contacts", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "client_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "active"
    t.string   "phone"
    t.string   "fax"
    t.string   "title"
  end

  create_table "loas", :force => true do |t|
    t.integer  "carrier_id"
    t.date     "effective_date"
    t.date     "expiration_date"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "client_id"
    t.boolean  "active"
    t.string   "carrier_code"
    t.string   "pdf"
    t.boolean  "agent"
    t.boolean  "internet_tracing"
    t.boolean  "voice_tracing"
    t.boolean  "customer_support"
    t.boolean  "customer_417"
    t.boolean  "error_824"
    t.boolean  "ack_997"
    t.boolean  "cancel_998"
    t.boolean  "clm"
    t.boolean  "interchange_receipt"
    t.boolean  "bol_web"
    t.boolean  "bol_edi"
    t.boolean  "diversion"
    t.boolean  "price_lookup"
    t.boolean  "customer_contract"
    t.boolean  "rate_negotiation"
    t.boolean  "view_freight_inv"
    t.boolean  "pay_freight_inv"
    t.boolean  "dispute_freight_inv"
    t.boolean  "view_incidental_inv"
    t.boolean  "pay_incidental_inv"
    t.boolean  "dispute_incidental_inv"
    t.boolean  "switch_release"
    t.boolean  "equipment_order"
  end

end
