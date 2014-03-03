# Superwall: A Basic Web App

Superwall is a simple web application that has a single "wall" onto which anyone can post anonymous messages.  As simple as it is, it's a real-deal, fully-functional web application that could be deployed as-in onto the web at large.

This is what it looks like once running:

<p style="text-align:center">
  <img src="http://f.cl.ly/items/0X0V2S2t0K0t1p2C1G39/superwall_home.png">
</p>

## Getting Started

We're going to work on superwall using GitHub like a professional programmer would.

### Fork the repository

First, you need to create your own copy of the code.  To do this you need to "fork" the main repository at [https://github.com/MissionBit/superwall](https://github.com/MissionBit/superwall).  This will create a copy of the superwall repository under your own GitHub account.

To do this, go to the [superwall repository on GitHub](https://github.com/MissionBit/superwall). In the upper-right hand corner you should see a button labeled "Fork"

<p style="text-align:center">
<img src="http://f.cl.ly/items/2W3G2W3U0E2f3v1a0a0K/Screen%20Shot%202014-03-03%20at%202.21.15%20PM.png" alt="Fork button">
</p>

**Click the button** and this will create a new repository under your own GitHub account. The number next to the button indicates how many times this repository has been forked, so it might be a different number.

### Get the clone URL

Now that you have your own copy of the repository, you need to create a copy on your local computer.  In git-ese this is called "cloning."  Go to your own GitHub page and you should see the "superwall" repository.

On the right-hand side you should see a little section labeled "**HTTPS** clone URL".

<p style="text-align: center;">
  <img src="http://f.cl.ly/items/0Y2i243A2k3s3C1t3Z3y/Screen%20Shot%202014-03-03%20at%202.35.06%20PM.png" alt="HTTPS clone URL">
</p>

**Copy** this URL.  It should look like

```text
https://github.com/your-actual-github-username/superwall.git
```

where `your-actual-github-username` is *your* personal GitHub username.

**Important!** Make sure you are *not* copying the original repository's clone URL, which would be `https://github.com/MissionBit/superwall.git`.

### Clone the repository

Once you have the clone URL, open the Terminal on your desktop and run the `git clone` command:

```shell
git clone https://github.com/your-actual-github-username/superwall.git
```

You might be prompted to enter your GitHub username and password.

<p style="text-align: center;">
<img src="http://f.cl.ly/items/1Q1J1b2o2l2c0e1m1X1f/Screen%20Shot%202014-03-03%20at%202.41.47%20PM.png" alt="Cloning a repository">
</p>

If everything worked, it should look something like this:

<p style="text-align: center">
<img src="http://f.cl.ly/items/3T2l2c361D1h0G1N2V1G/Screen%20Shot%202014-03-03%20at%202.44.47%20PM.png" alt="Successful git clone">
</p>

### Start the web application!

We're ready to go!  To start, run the following commands one at a time:

1.  Change into the `superwall` directory
    ```shell
    cd superwall 
    ```
1.  Install the `bundle` gem, a Ruby library for managing larger applications
    ```shell
    sudo gem install bundle
    ```
1.  Use bundle to install the libraries that `superwall` needs
    ```shell
    sudo bundle install
    ```
1.  Run the application!
    ```shell
    ruby app.rb
    ```

My computer is set up slightly differently so I don't need to use `sudo`, but this is roughly what you should see:

<p style="text-align: center;">
  <img src="http://f.cl.ly/items/1n070D1X1y1z3O1V1o2A/Screen%20Shot%202014-03-03%20at%202.53.04%20PM.png">
</p>

### Using superwall

At this point you have a real, live web application running on your computer.  Open a browser and go to [http://localhost:4567](http://localhost:4567) and you should see the "Superwall" application.

You can take it from here!  If you want ideas for how to play around with this, visit the [What to work on](http://localhost:4567/todo) section.

## Editing the application

The main application is in the `app.rb` file.  If you want to change the HTML, look in the `templates/` directory.  The main CSS file is located at `public/main.css`, which you can edit.

If you want to add images to your website...

1. Find an image on the web or create it yourself
1. Download it to your computer
1. Name it something sensible like `banner.jpg` or `profile-picture.jpg`.  Spaces and upper-case letters are annoying on the web, so avoid those.
1. Move the image to the `superwall/public/` directory

You can now display the image on your website using the `<img>` tag, like so

```html
<img src="/my-awesome-image.jpg" alt="This is an awesome image!">
```

The forward slash `/` before the image name is important, here.
