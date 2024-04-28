<?php
    class ConexaoBDAgendaQuestionario{
        private $serverName = "localhost";
        private $userName = "root";
        private $password = "260919";
        private $dbName = "agendaquestionario";
        
        public function conectar()
        {
            $conn = new mysqli($this->serverName, $this->userName, $this->password, $this->dbName);
            return $conn;
        }
    }
?>
