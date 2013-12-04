module Quickbooks
  module Service
    class CreditMemo < BaseService
      include ServiceCrud

      def delete(credit_memo, options = {})
        delete_by_query_string(credit_memo)
      end

      private

      def default_model_query
        "SELECT * FROM CREDITMEMO"
      end

      def model
        Quickbooks::Model::CreditMemo
      end
    end
  end
end
