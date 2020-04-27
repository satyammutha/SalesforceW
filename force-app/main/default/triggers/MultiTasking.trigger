trigger MultiTasking on Account (after insert) {

    for(Account acc:Trigger.new){
        
        if(acc.Choice5__c != null){
            
            //Create a list of all selected items
            List<String> selectedItems = new List<String>();
            selectedItems = acc.Choice5__c.split(';');
            System.debug('Items selected :'+selectedItems);

            //Create a Task for each selected Items
            List<Task> tasksToCreate = new List<Task>();
            
            for(String item:selectedItems){
                    Task myTask = new Task();
                    myTask.Subject = item;
                    myTask.WhatId = acc.Id;
                    tasksToCreate.add(myTask);
            }
                insert tasksToCreate;
        }
    }
}