module Quickbooks
  module Model
    class CreditMemo < BaseModel

      #== Constants
      REST_RESOURCE = 'credit_memo'
      XML_COLLECTION_NODE = "CreditMemo"
      XML_NODE = "CreditMemo"

      xml_accessor :id, :from => 'Id', :as => Integer
      xml_accessor :sync_token, :from => 'SyncToken', :as => Integer
      xml_accessor :meta_data, :from => 'MetaData', :as => Quickbooks::Model::MetaData
      xml_accessor :doc_number, :from => 'DocNumber'
      xml_accessor :balance, :from => 'Balance', :as => Float
      xml_accessor :due_date, :from => 'DueDate', :as => Date
      xml_accessor :customer_ref, :from => 'CustomerRef', :as => Quickbooks::Model::CustomerRef
      xml_accessor :customer_memo, :from => 'CustomerMemo'

    end
  end
end
