# Webaap

Script to create webaap automatically using nativefier

Webaap consist on create a desktop application from website.
The website morph in a executable and stay in menu app
An important observation, you can't run a Webaap in Windows,
only on linux or an apple system, too is nescesary install the Nativefier, 
because the script use he to create a Webaap

### How to run 

to run just type


```shell
./Webaap.sh
```

Remember you need to be inside the Webaap directory to exec any command


if don't have permission type


```shell
sudo chmod +x Webaap.sh
```



## Available arguments 

### pt-br version `-pt`

To run the pt-br version type


```shell
./Webaap.sh -pt
```


### Aplication version `-v`

Show the app version

```shell
./Webaap.sh -v
```


<br/>

## Nativefier

You need install Nativefier to create a Webaap :>


[Nativefier Github](https://github.com/nativefier/nativefier)


## How it works ?

Firstly, webaap is just a script that facilitates the execution of nativefier, when opening it will first ask for the name of the application you want to create, this name corresponds to the shortcut that will be created in the application menu.

### App icon

Then he asks for an icon link, this is because nativefier allows you to create custom icons for the applications, there is no need to download the icon, just insert the link with some valid extension, we will talk about that later.
You can take the icon straight from google images, but I recommend using [Flaticon](https://www.flaticon.com/br/).

Below is an example of a whatsapp icon taken from the flaticon

```link
https://www.flaticon.com/svg/vstatic/svg/733/733585.svg?token=exp=1617835507~hmac=e802dd663482e71ed81c0b45fd4bfa77
```

After finding the link just paste it in the terminal and the script will do the rest, it will also ask for the extension of the icon, it is highly recommended to use icons in png, so just type

```extension
png
```

### Inside the script

The script will create a temporary folder in 
```
~/Download/.WebappIcon 
```
And store your icons inside, you can delete the folder after installing Webaap


Then it will move your app to
```
/ opt
```

And create an app.desktop, where it will be available at
```
/ usr / share / applications
```

### Delete app

But don't worry about directories
When choosing the option to delete an application, just pass exactly the same name you used in the creation, and the script will delete all files and directories created automatically.
It is important that the name is exactly the same, otherwise the script will not recognize what to delete

## Webaap

![image](assets/screenshot1.png)
![image](assets/screenshot2.png)

