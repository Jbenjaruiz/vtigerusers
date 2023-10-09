<?php

class CustomUsers_List_View extends Vtiger_Index_View
{

        public function process(Vtiger_Request $request)
        {
                include_once 'modules/CustomUsers/classes/Api.class.php';
                $dataUsers = array();
                $api = new UsersApi();
                $returnedData = $api->GET();
                $dataUsers = $returnedData;

                $viewer = $this->getViewer($request);
                $viewer->assign("DataUsers", $dataUsers);
                $viewer->view('List.tpl', $request->getModule());
        }

}