Vagrant.configure("2") do |config|
  config.vm.box = "dummy"

  config.vm.provider :aws do |aws, override|
    aws.aws_profile = "LOCAL AWS PROFILE"
    aws.keypair_name = "KEY PAIR NAME"
    aws.region = "REGION"
    
    aws.instance_type = "t2.nano"
    aws.ami = "ami-2d39803a"
    
    aws.block_device_mapping = [{ 'DeviceName' => '/dev/sda1', 'Ebs.VolumeSize' => 8 }]
    aws.subnet_id = "SUBNET WITH PUBLIC IP ASSIGNED SET TO TRUE"
    aws.security_groups = ["SECURITY GROUP WITH SSH ACCESS ENABLED"]

    override.ssh.username = "ubuntu"
    override.ssh.private_key_path = "~/.ssh/PRIVATE KEY OR PEM FILE"
  end
end
