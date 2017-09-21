angular.module 'mailforever'
  .controller 'MessagesController', ($scope) ->
    'ngInject'

    ##################################
    ## Attributes
    ##################################
    $scope.attrs =
      messages: $scope.data
      selected: null
      type    : $scope.type

    ##################################
    ## Methods
    ##################################
    $scope.methods =
      select: (message) ->
        $scope.attrs.selected = message
        $scope.selectCb(message)

      isSelected: (messageId) ->
        return $scope.attrs.selected?.uid is messageId

    ##################################
    ## Watchers
    ##################################

    ##################################
    ## Init
    ##################################