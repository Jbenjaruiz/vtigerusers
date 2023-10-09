<?php
class UsersApi
{


    public function GET()
    {

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'https://jsonplaceholder.typicode.com/users');
        curl_setopt($ch, CURLOPT_TIMEOUT, 20);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $data = curl_exec($ch);

        if (curl_errno($ch))
            echo curl_error($ch);
        else
            $decodedData = json_decode($data, true);

        curl_close($ch);
        return $decodedData;
    }

}