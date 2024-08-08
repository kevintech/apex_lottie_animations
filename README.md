# APEX Lottie Animations

## Introduction
APEX Lottie Animations is a collection of Oracle APEX plugins that allow you to seamlessly integrate Lottie animations into your applications. With support for both template and region components, these plugins enable you to add high-quality, scalable animations that enhance the user experience with minimal effort.

Lottie animations are vector-based, ensuring smooth playback across different devices and screen sizes. This plugin provides a straightforward way to load and control these animations, making it ideal for adding dynamic, eye-catching content to your APEX applications without sacrificing performance..

### Plugins Included
- **Template Component Plugin**: Add Lottie animations directly into APEX with a Template component.
- **Region Plugin**: Embed Lottie animations within APEX regions.

## Installation

1. **Download the Plugin Files**  
   Clone or download the repository to your local machine.

   ```bash
   git clone https://github.com/yourusername/apex-lottie-animations.git
   ```

2. **Import the Plugin into Oracle APEX**
   - Navigate to your Oracle APEX application.
   - Go to **Shared Components** > **Plugins** > **Import**.
   - Select the appropriate plugin SQL file from the `plugins` folder in this repository.
   - Follow the prompts to complete the installation.

3. **Configure the Plugin**
   - After importing, add the plugin to your page as a Template or Region.
   - Configure the plugin attributes as required.

## Plugin Attributes

### Template and Region Plugin Attributes
- **Lottie File URL**: URL of the Lottie JSON file containing the animation data. Find lottie files [here](https://lottiefiles.com/).
- **Size Unit (pixels, percentage)**: Choose between pixels (px) for fixed size or percentage (%) for responsive sizing.
- **Width**: Set the width of the animation using the selected size unit.
- **Height**: Set the height of the animation using the selected size unit.
- **Auto-play (y/n)**: Enable or disable automatic playback of the animation on page load.
- **Loop (y/n)**: Choose whether the animation should loop continuously or play only once.
- **Duration (milliseconds)**: Specify the total duration of the animation in milliseconds to control playback speed.
- **Speed (speed 1x, 2x, etc...)**: Adjust the animation speed by setting a multiplier (e.g., 1x for normal speed, 2x for double speed).

## Support
If you encounter any issues or have questions, please feel free to reach out:

- **Email**: [your.hello@kevintech.ninja](mailto:your.hello@kevintech.ninja)
- **GitHub Issues**: Open an issue in this repository.

---

Feel free to fork this project, submit issues, or contribute!